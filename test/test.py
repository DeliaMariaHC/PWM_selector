# test/test_dummy.py
import cocotb

@cocotb.test()
async def dummy_test(dut):
    """test"""
    assert True

