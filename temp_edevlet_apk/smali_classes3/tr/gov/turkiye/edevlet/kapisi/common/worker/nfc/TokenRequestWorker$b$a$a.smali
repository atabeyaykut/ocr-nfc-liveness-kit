.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.TokenRequestWorker$doWork$2$1$1"
    f = "TokenRequestWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceModel;",
            ">;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a$a;->a:Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 1
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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a$a;->a:Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceOperation;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/TokenRequestWorker$b$a$a;->a:Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceModel;

    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceModel;->getTokenResult()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceResult;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceOperation;-><init>(ZLtr/gov/turkiye/edevlet/kapisi/data/nfc/TokenServiceResult;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V

    invoke-virtual {p1, v0}, Lqd/b;->i(Ljava/lang/Object;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
