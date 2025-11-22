.class public final Lag/b$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lag/b;->a(IILjava/lang/Integer;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.institution.InstitutionDetailRepository"
    f = "InstitutionDetailRepository.kt"
    l = {
        0x27,
        0x8d
    }
    m = "fetchInstitutionDetail"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lag/b;

.field public c:I


# direct methods
.method public constructor <init>(Lag/b;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lag/b;",
            "Lp9/d<",
            "-",
            "Lag/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lag/b$a;->b:Lag/b;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lag/b$a;->a:Ljava/lang/Object;

    iget p1, p0, Lag/b$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lag/b$a;->c:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lag/b$a;->b:Lag/b;

    invoke-virtual {v1, p1, p1, v0, p0}, Lag/b;->a(IILjava/lang/Integer;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
