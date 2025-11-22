.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity$b;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;J)V
    .locals 2

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity$b;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .line 1
    sget v0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->p:I

    .line 2
    .line 3
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity$b;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->e:Landroid/os/CountDownTimer;

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->d:Landroidx/constraintlayout/widget/Group;

    .line 21
    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->c:Landroidx/constraintlayout/widget/Group;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity$b;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;

    .line 2
    .line 3
    iput-wide p1, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->f:J

    .line 4
    .line 5
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivitySmsVerificationBinding;->e:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    const/16 v2, 0x3e8

    .line 12
    .line 13
    int-to-long v2, v2

    .line 14
    div-long/2addr p1, v2

    .line 15
    long-to-int p2, p1

    .line 16
    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/verification/sms/SMSVerificationActivity;->y()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
