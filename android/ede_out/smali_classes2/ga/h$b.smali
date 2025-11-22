.class public final Lga/h$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/ArrayList<",
        "Lda/j;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/h<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/h<",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/h$b;->a:Lga/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lga/h$b;->a:Lga/h;

    invoke-virtual {v0}, Lga/h;->o()Lma/b;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lga/h;->q()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    invoke-static {v1}, Lga/z0;->g(Lma/a;)Lma/o0;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v6, Lga/f0;

    new-instance v7, Lga/i;

    invoke-direct {v7, v3}, Lga/i;-><init>(Lma/o0;)V

    invoke-direct {v6, v0, v4, v5, v7}, Lga/f0;-><init>(Lga/h;IILx9/a;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Lma/a;->h0()Lma/o0;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v7, Lga/f0;

    add-int/lit8 v8, v3, 0x1

    new-instance v9, Lga/j;

    invoke-direct {v9, v6}, Lga/j;-><init>(Lma/o0;)V

    const/4 v6, 0x2

    invoke-direct {v7, v0, v3, v6, v9}, Lga/f0;-><init>(Lga/h;IILx9/a;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v8

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    invoke-interface {v1}, Lma/a;->g()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_2
    if-ge v4, v6, :cond_3

    new-instance v7, Lga/f0;

    add-int/lit8 v8, v3, 0x1

    new-instance v9, Lga/k;

    invoke-direct {v9, v1, v4}, Lga/k;-><init>(Lma/b;I)V

    const/4 v10, 0x3

    invoke-direct {v7, v0, v3, v10, v9}, Lga/f0;-><init>(Lga/h;IILx9/a;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move v3, v8

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lga/h;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, v1, Lxa/a;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_4

    new-instance v0, Lga/l;

    invoke-direct {v0}, Lga/l;-><init>()V

    invoke-static {v2, v0}, Lm9/o;->R0(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    return-object v2
.end method
