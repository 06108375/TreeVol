
#' @title  volumn Netwton
#' @details Tree Volume Estimation
#' @author A. Akinnagbe, P. O. Omondiagbe & S. O. Akindele
#' @description  This function estimates tree volume using Newton's formula
#' @param db diameter of a tree at the base in centimeters (cm)
#' @param dm diameter of a tree at the middle in centimeters (cm)
#' @param dh diameter of a tree at the top in centimeters (cm)
#' @param h height of a tree in meters (m)
#' @return Tree volume
#' @example 
#' volNewton(2,3,4,2)
#' @export
volNewton <- function(db, dm, dt, h){
  if (!is.numeric(db) || !is.double(db)){
    stop('diameter at the base must be a positive integer or a decimal')
  }
  if (!is.numeric(dm) || !is.double(dm)){
    stop('diameter at the middle must be a positive integer or a decimal')
  }
  if (!is.numeric(dt) || !is.double(dt)){
    stop('diameter at the top must be a positive integer or a decimal')
  }
  if (!is.numeric(h) || !is.double(h)){
    stop('tree height must be a positive integer or a decimal')
  }

  # conversion from cm to m
  db = db/100
  dm = dm/100
  dt = dt/100

  return(h*((pi*(db^2)/4) + (4*pi*(dm^2)/4) + (pi*(dt^2)/4))/6)
}
