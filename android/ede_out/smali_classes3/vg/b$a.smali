.class public final Lvg/b$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvg/b;->b(IILp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.services.list.InstitutionListRepository"
    f = "InstitutionListRepository.kt"
    l = {
        0x55,
        0x6f
    }
    m = "fetchInstitutionList"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lvg/b;

.field public c:I


# direct methods
.method public constructor <init>(Lvg/b;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvg/b;",
            "Lp9/d<",
            "-",
            "Lvg/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lvg/b$a;->b:Lvg/b;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lvg/b$a;->a:Ljava/lang/Object;

    iget p1, p0, Lvg/b$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lvg/b$a;->c:I

    iget-object p1, p0, Lvg/b$a;->b:Lvg/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lvg/b;->b(IILp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
