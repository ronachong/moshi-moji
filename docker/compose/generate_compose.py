import chalk
import os

from jinja2 import Environment, FileSystemLoader, Template

dest_dir = '/home/rona/projects/moshimoji/docker/compose'
JENV = Environment(loader=FileSystemLoader(dest_dir))
template = JENV.get_template('compose-stack.template')

stage_vars = {
    'stage_bool': 1,
    'frontend_image': 'rochong/moshimoji-fe:latest-STAGE',
    'n_replicas_nginx': 1,
    'n_replicas_frontend': 1,
    'n_replicas_backend': 1,
}

prod_vars = {
    'stage_bool': 0,
    'frontend_image': 'rochong/moshimoji-fe:latest-PROD',
    'n_replicas_nginx': 1,
    'n_replicas_frontend': 1,
    'n_replicas_backend': 1,
}

stage_dest = os.path.join(dest_dir, 'compose-stack-stage.yml')
prod_dest = os.path.join(dest_dir, 'compose-stack-prod.yml')

def generate_yaml(path, vars):
    with open(path, 'w') as file:
        file.write(template.render(**vars))

def print_yaml(path):
    with open(path, 'r') as file:
        contents = file.read()
    print(
        "{path}\n{contents}\n"
        .format(path=chalk.green(path + ':'), contents=contents))

generate_yaml(stage_dest, stage_vars)
print_yaml(stage_dest)
generate_yaml(prod_dest, prod_vars)
print_yaml(prod_dest)
