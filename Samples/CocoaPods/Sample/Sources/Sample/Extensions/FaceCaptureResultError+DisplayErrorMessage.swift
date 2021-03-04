//
// Copyright © 2020 Yoti Ltd. All rights reserved.
//

import YotiFaceCapture

extension FaceCaptureResultError {
    var displayErrorMessage: String {
        switch self {
            case .noFaceDetected:
                return "No face detected"
            case .multipleFaces:
                return "Multiple faces"
            case .faceTooSmall:
                return "Face too small"
            case .faceTooBig:
                return "Face too big"
            case .faceNotCentered:
                return "Face not centered"
            case .faceAnalysisFailed:
                return "Face analysis failed"
        }
    }
}
