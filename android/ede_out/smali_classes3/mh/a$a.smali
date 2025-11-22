.class public final Lmh/a$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmh/a;->a(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.host.MobileAccidentQRScanRepository"
    f = "MobileAccidentQRScanRepository.kt"
    l = {
        0x4d,
        0x4e
    }
    m = "scanQR"
.end annotation


# instance fields
.field public a:Lmh/a;

.field public b:Ljava/lang/String;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lmh/a;

.field public e:I


# direct methods
.method public constructor <init>(Lmh/a;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmh/a;",
            "Lp9/d<",
            "-",
            "Lmh/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmh/a$a;->d:Lmh/a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmh/a$a;->c:Ljava/lang/Object;

    iget p1, p0, Lmh/a$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmh/a$a;->e:I

    iget-object p1, p0, Lmh/a$a;->d:Lmh/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lmh/a;->a(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
