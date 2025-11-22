.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker$doWork$2$1$1"
    f = "ServiceDetailWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;ILp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;",
            "I",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;

    iput p2, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;->b:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 2
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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;

    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;->b:I

    invoke-direct {p1, v0, v1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;ILp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker$b$a$a;->b:I

    invoke-static {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;->a(Ltr/gov/turkiye/edevlet/kapisi/common/worker/service/ServiceDetailWorker;I)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
