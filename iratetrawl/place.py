import functools

from flask import (
    Blueprint, flash, g, redirect, render_template, request, session, url_for, jsonify
)
from werkzeug.security import check_password_hash, generate_password_hash

from iratetrawl.db import get_db

bp = Blueprint('place', __name__, url_prefix='/place')

@bp.route('/nearby/<int:kilometers>/<float:latitude>/<float:longitude>')
def getNearbyPlaces(kilometers, latitude, longitude):
    return 'Looking within %d kms at point %d Lat, %d Long' % (kilometers, latitude, longitude)
