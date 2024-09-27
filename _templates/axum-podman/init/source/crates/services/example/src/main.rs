use axum::Router;
use axum::routing::get;
use tokio::net::TcpListener;

use tracing::info;
use tracing_subscriber::EnvFilter;

async fn hello_world() -> String {
    "Hello World".to_string()
}

#[tokio::main]
async fn main() -> Result<()> {
    tracing_subscriber::fmt()
      .without_time() // TODO For early local development.
      .with_target(false)
      // uses RUST_LOG='error' by default
      .with_env_filter(EnvFilter::from_default_env())
      .init();

    let routes_all: Router = Router::new()
        .route("/", get(hello_world));

    let binding_host = "0.0.0.0";
    let binding_port = 8080;
    let binding_addr = format!("{binding_host}:{binding_port}");

    // Note: ok to unwrap, as we stop if it fails here
	let listener = TcpListener::bind(&binding_addr)
        .await.unwrap();

    info!("{:<12} - http://{}", "LISTENING", binding_addr);

    axum::serve(listener, routes_all.into_make_service())
		.await
		.unwrap();

    Ok(())
}