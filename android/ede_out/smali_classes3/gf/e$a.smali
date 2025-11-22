.class public final Lgf/e$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgf/e;->d(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.core.network.SearchWorkInteractor"
    f = "Interactor.kt"
    l = {
        0x4e,
        0x4e
    }
    m = "invoke"
.end annotation


# instance fields
.field public a:Lpc/a;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lgf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/e<",
            "TP;TT;>;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lgf/e;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/e<",
            "TP;TT;>;",
            "Lp9/d<",
            "-",
            "Lgf/e$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lgf/e$a;->c:Lgf/e;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lgf/e$a;->b:Ljava/lang/Object;

    iget p1, p0, Lgf/e$a;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lgf/e$a;->d:I

    iget-object p1, p0, Lgf/e$a;->c:Lgf/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lgf/e;->d(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
