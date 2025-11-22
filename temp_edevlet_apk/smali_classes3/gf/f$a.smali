.class public final Lgf/f$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgf/f;->d(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.core.network.SuspendingWorkInteractor"
    f = "Interactor.kt"
    l = {
        0x41,
        0x41
    }
    m = "invoke"
.end annotation


# instance fields
.field public a:Lpc/m;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lgf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/f<",
            "TP;TT;>;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lgf/f;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/f<",
            "TP;TT;>;",
            "Lp9/d<",
            "-",
            "Lgf/f$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lgf/f$a;->c:Lgf/f;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lgf/f$a;->b:Ljava/lang/Object;

    iget p1, p0, Lgf/f$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lgf/f$a;->d:I

    iget-object p1, p0, Lgf/f$a;->c:Lgf/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lgf/f;->d(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
