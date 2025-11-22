.class public final Lrf/a$c;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrf/a;->b(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteOperationRepository"
    f = "FavoriteOperationRepository.kt"
    l = {
        0x4c,
        0x6f
    }
    m = "fetchFavoriteServices"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lrf/a;

.field public c:I


# direct methods
.method public constructor <init>(Lrf/a;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrf/a;",
            "Lp9/d<",
            "-",
            "Lrf/a$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lrf/a$c;->b:Lrf/a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lrf/a$c;->a:Ljava/lang/Object;

    iget p1, p0, Lrf/a$c;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lrf/a$c;->c:I

    iget-object p1, p0, Lrf/a$c;->b:Lrf/a;

    invoke-virtual {p1, p0}, Lrf/a;->b(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
