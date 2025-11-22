.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.otp.ApprovalWorker$doWork$2$1$1"
    f = "ApprovalWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# direct methods
.method public constructor <init>(Lp9/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a$a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a$a;

    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a$a;-><init>(Lp9/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnc/a0;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a$a;

    .line 6
    .line 7
    invoke-direct {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a$a;-><init>(Lp9/d;)V

    .line 8
    .line 9
    .line 10
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/otp/ApprovalWorker$b$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ldf/r;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ldf/r;-><init>(Z)V

    invoke-virtual {p1, v0}, Lqd/b;->i(Ljava/lang/Object;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
