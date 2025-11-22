.class public final Lpf/a$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpf/a;->b(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.dashboard.ebys.ElectronicDocServicesRepository"
    f = "ElectronicDocServicesRepository.kt"
    l = {
        0x49,
        0x60
    }
    m = "fetchElectronicServiceList"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lpf/a;

.field public c:I


# direct methods
.method public constructor <init>(Lpf/a;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpf/a;",
            "Lp9/d<",
            "-",
            "Lpf/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpf/a$a;->b:Lpf/a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lpf/a$a;->a:Ljava/lang/Object;

    iget p1, p0, Lpf/a$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lpf/a$a;->c:I

    iget-object p1, p0, Lpf/a$a;->b:Lpf/a;

    invoke-virtual {p1, p0}, Lpf/a;->b(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
