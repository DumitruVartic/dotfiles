import argparse
import os
import shutil


def remove_pycache(dir_path: str = os.getcwd(), verbose: bool = False):
    for root, dirs, files in os.walk(dir_path):
        if "__pycache__" in dirs:
            pycache_path = os.path.join(root, "__pycache__")
            if verbose:
                print(f"Removing: {pycache_path}")
            try:
                shutil.rmtree(pycache_path)
            except Exception as e:
                if verbose:
                    print(f"Error removing {pycache_path}: {e}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Remove __pycache__ directories recursively."
    )

    parser.add_argument(
        "--directory",
        nargs="?",
        default=os.getcwd(),
        help="The directory to start searching from. Defaults to the current directory.",
    )

    parser.add_argument(
        "--verbose", action="store_true", help="Increase output verbosity."
    )

    args = parser.parse_args()

    if os.path.exists(args.directory):
        remove_pycache(args.directory, args.verbose)
