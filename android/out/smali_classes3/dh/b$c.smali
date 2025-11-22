.class public final Ldh/b$c;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldh/b;->f(ILp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverRepository"
    f = "MobileAccidentDriverRepository.kt"
    l = {
        0x12b,
        0x12c
    }
    m = "saveSelectedCar"
.end annotation


# instance fields
.field public a:Ldh/b;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ldh/b;

.field public e:I


# direct methods
.method public constructor <init>(Ldh/b;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldh/b;",
            "Lp9/d<",
            "-",
            "Ldh/b$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldh/b$c;->d:Ldh/b;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ldh/b$c;->c:Ljava/lang/Object;

    iget p1, p0, Ldh/b$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ldh/b$c;->e:I

    iget-object p1, p0, Ldh/b$c;->d:Ldh/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ldh/b;->f(ILp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
