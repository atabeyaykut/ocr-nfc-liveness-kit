.class public final Lac/d$a$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lac/d$a;-><init>(Lac/d;Ldc/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/Collection<",
        "+",
        "Lcc/e0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lac/d$a;


# direct methods
.method public constructor <init>(Lac/d$a;)V
    .locals 0

    iput-object p1, p0, Lac/d$a$c;->a:Lac/d$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lac/d$a$c;->a:Lac/d$a;

    .line 2
    .line 3
    iget-object v1, v0, Lac/d$a;->g:Ldc/f;

    .line 4
    .line 5
    iget-object v0, v0, Lac/d$a;->j:Lac/d;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ldc/f;->w(Lma/e;)Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
