github_repo="https://github.com/Hailey2022/rust-send-udp"
binary_name="rust-send-udp"

cd && mkdir _
git clone https://github.com/Hailey2022/rust-send-udp && cd "$(basename "$_" .git)"
cargo install cross
cross build --release --target aarch64-linux-android
mv target/aarch64-linux-android/release/$binary_name ../_/aarch64-linux-android-$binary_name
cross build --release --target x86_64-pc-windows-gnu
mv target/aarch64-linux-android/release/$binary_name ../_/x86_64-pc-windows-gnu-$binary_name
