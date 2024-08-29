package shinhan.hackathon.ssyrial.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import shinhan.hackathon.ssyrial.model.ApiResponse;
import shinhan.hackathon.ssyrial.model.deposit.*;
import shinhan.hackathon.ssyrial.service.DepositService;


@RestController
@RequestMapping("/api/deposit")
public class DepositController extends BaseController {

  private final DepositService depositService;

  public DepositController(DepositService depositService) {
    this.depositService = depositService;
  }

  /*
   * createDepositAccount
   */
  @PostMapping("/createDepositAccount")
  public ResponseEntity<ApiResponse<CreateDepositAccountModel.Response>> createDepositAccount(
      @RequestBody CreateDepositAccountModel.Request request) {
    CreateDepositAccountModel.Response response = depositService.createDepositAccount(
        request.getWithdrawalAccountNo(), request.getAccountTypeUniqueNo(), request.getDepositBalance());
    return successResponse(response);
  }

  
}