.class public final Lwf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/epoxy/f0;


# instance fields
.field public final a:Lwf/b;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lwf/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    new-instance p1, Lwf/b;

    invoke-direct {p1}, Lwf/b;-><init>()V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwf/c;->a:Lwf/b;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lwf/c;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lwf/c;->a:Lwf/b;

    invoke-virtual {v0, p1}, Lwf/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final add(Lcom/airbnb/epoxy/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/epoxy/u<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "model"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwf/c;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lwf/c;->a:Lwf/b;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p1, Lwf/b;->a:Ljava/util/BitSet;

    .line 16
    .line 17
    const/4 v2, 0x6

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p1, Lwf/b;->d:Ljava/util/List;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v0, "models cannot be null"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "models"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwf/c;->a:Lwf/b;

    .line 7
    .line 8
    iget-object v1, v0, Lwf/b;->a:Ljava/util/BitSet;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 15
    .line 16
    .line 17
    iput-object p1, v0, Lwf/b;->d:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwf/c;->a:Lwf/b;

    .line 2
    .line 3
    iget-object v1, v0, Lwf/b;->a:Ljava/util/BitSet;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/airbnb/epoxy/u;->onMutation()V

    .line 14
    .line 15
    .line 16
    const v1, 0x3f99999a    # 1.2f

    .line 17
    .line 18
    .line 19
    iput v1, v0, Lwf/b;->b:F

    .line 20
    .line 21
    return-void
.end method
