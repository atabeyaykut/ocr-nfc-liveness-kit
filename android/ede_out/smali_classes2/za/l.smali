.class public final Lza/l;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/Set<",
        "+",
        "Llb/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/k;


# direct methods
.method public constructor <init>(Lza/k;)V
    .locals 0

    iput-object p1, p0, Lza/l;->a:Lza/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lza/l;->a:Lza/k;

    invoke-virtual {v0}, Lza/o;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lza/o;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {v1, v0}, Lm9/g0;->F(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method
