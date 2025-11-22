.class public final Lmf/c$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/c;->a(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.dashboard.about.AboutPageRepository"
    f = "AboutPageRepository.kt"
    l = {
        0x3f,
        0x56
    }
    m = "fetchAboutPages"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lmf/c;

.field public c:I


# direct methods
.method public constructor <init>(Lmf/c;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmf/c;",
            "Lp9/d<",
            "-",
            "Lmf/c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmf/c$a;->b:Lmf/c;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmf/c$a;->a:Ljava/lang/Object;

    iget p1, p0, Lmf/c$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmf/c$a;->c:I

    iget-object p1, p0, Lmf/c$a;->b:Lmf/c;

    invoke-virtual {p1, p0}, Lmf/c;->a(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
