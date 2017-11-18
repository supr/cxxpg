#include "fmt/format.h"
#include "spdlog/spdlog.h"
#include "gflags/gflags.h"

DEFINE_bool(verbose, false, "Verbose");

int main(int argc, char** argv) {
	gflags::ParseCommandLineFlags(&argc, &argv, true);
	fmt::print("Hello World: {}\n", argc);
	auto console = spdlog::stdout_color_mt("console");
	console->info("Welcome to spdlog");
	console->error("Some error message with arg{}..", 1);
	return 0;
}
