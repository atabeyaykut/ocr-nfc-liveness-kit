.class public final Lbg/a$c;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbg/a;->b(ILp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.institution.favorite.FavoriteOperationRepository"
    f = "FavoriteOperationRepository.kt"
    l = {
        0x57
    }
    m = "unFavoriteService"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lbg/a;

.field public c:I


# direct methods
.method public constructor <init>(Lbg/a;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbg/a;",
            "Lp9/d<",
            "-",
            "Lbg/a$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbg/a$c;->b:Lbg/a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lbg/a$c;->a:Ljava/lang/Object;

    iget p1, p0, Lbg/a$c;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lbg/a$c;->c:I

    iget-object p1, p0, Lbg/a$c;->b:Lbg/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lbg/a;->b(ILp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
