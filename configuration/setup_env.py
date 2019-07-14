#!/usr/env python3
from argparse import ArgumentParser, RawTextHelpFormatter
from subprocess import Popen

import yaml


def setup_argparser():
    """Set up the arguments for the program."""
    parser = ArgumentParser(
        prog="rcsetup",
        description="A simple Python utility for environment setup.",
        formatter_class=RawTextHelpFormatter
    )
    parser.add_argument(
        "-c", "--config", type=str, default="./config.yaml",
        help="A file path to a config YAML file.")
    parser.add_argument(
        "-t", "--template", type=str,
        help="Template file for rc profile construction.")

    return parser


class ZshInstaller:
    def __init__(self, shell_pkg=None):
        self._spkg = shell_pkg

    def _configure(self, pkg_config):
        if self._spkg:
            p = Popen(self._repos[self._spkg]["install"])
            p.wait()

        header = (
            f'{pkg_config["header"]}\n'
            f'export ZSH_THEME={pkg_config["theme"]}'
        )


    def __call__(self, config):
        with open("config.yaml", "r") as stream:
            config = yaml.safe_load(stream)

        self._configure(config[self._spkg])





def main():
    pass