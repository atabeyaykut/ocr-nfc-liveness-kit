.class public final Lga/n$a$r;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/n$a;-><init>(Lga/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/List<",
        "+",
        "Lga/q0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/n<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public final synthetic b:Lga/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/n$a;Lga/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/n<",
            "TT;>.a;",
            "Lga/n<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/n$a$r;->a:Lga/n$a;

    iput-object p2, p0, Lga/n$a$r;->b:Lga/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lga/n$a$r;->a:Lga/n$a;

    invoke-virtual {v0}, Lga/n$a;->a()Lma/e;

    move-result-object v0

    invoke-interface {v0}, Lma/e;->s()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.declaredTypeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lma/w0;

    new-instance v3, Lga/q0;

    const-string v4, "descriptor"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lga/n$a$r;->b:Lga/n;

    invoke-direct {v3, v4, v2}, Lga/q0;-><init>(Lga/r0;Lma/w0;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
