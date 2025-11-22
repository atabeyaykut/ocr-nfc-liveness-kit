.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;->doWork(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.otp.ApprovalWorker"
    f = "ApprovalWorker.kt"
    l = {
        0x21
    }
    m = "doWork"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;

.field public c:I


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$a;->a:Ljava/lang/Object;

    iget p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$a;->c:I

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$a;->b:Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;

    invoke-virtual {p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker;->doWork(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
