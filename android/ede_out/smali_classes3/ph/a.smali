.class public final Lph/a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;)V
    .locals 4

    iput-object p1, p0, Lph/a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;

    const-wide/16 v0, 0x1388

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 5

    .line 1
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v3, "Check Approve - 4"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lph/a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;

    .line 12
    .line 13
    iget v3, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->g:I

    .line 14
    .line 15
    iget v4, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->f:I

    .line 16
    .line 17
    if-ge v3, v4, :cond_0

    .line 18
    .line 19
    const-string v3, "Check Approve - 5"

    .line 20
    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v0, v3, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget v0, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->g:I

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    iput v0, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->g:I

    .line 31
    .line 32
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->b:Ll9/e;

    .line 33
    .line 34
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lph/d;

    .line 39
    .line 40
    invoke-virtual {v0}, Lph/d;->d()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v3, "Check Approve - 6"

    .line 45
    .line 46
    new-array v4, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {v0, v3, v4}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 56
    .line 57
    const/16 v3, 0x8

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;->b:Lcom/google/android/material/button/MaterialButton;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
