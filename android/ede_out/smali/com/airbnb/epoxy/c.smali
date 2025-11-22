.class public final Lcom/airbnb/epoxy/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I

.field public final synthetic c:Lcom/airbnb/epoxy/m;

.field public final synthetic d:Lcom/airbnb/epoxy/d;


# direct methods
.method public constructor <init>(ILcom/airbnb/epoxy/d;Lcom/airbnb/epoxy/m;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/airbnb/epoxy/c;->d:Lcom/airbnb/epoxy/d;

    iput-object p4, p0, Lcom/airbnb/epoxy/c;->a:Ljava/util/List;

    iput p1, p0, Lcom/airbnb/epoxy/c;->b:I

    iput-object p3, p0, Lcom/airbnb/epoxy/c;->c:Lcom/airbnb/epoxy/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/airbnb/epoxy/c;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/airbnb/epoxy/c;->a:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/airbnb/epoxy/c;->d:Lcom/airbnb/epoxy/d;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Lcom/airbnb/epoxy/d;->b(ILjava/util/List;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/airbnb/epoxy/c;->c:Lcom/airbnb/epoxy/m;

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, v2, Lcom/airbnb/epoxy/d;->b:Lcom/airbnb/epoxy/d$c;

    .line 18
    .line 19
    check-cast v0, Lcom/airbnb/epoxy/q;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v2, v1, Lcom/airbnb/epoxy/m;->b:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iput v3, v0, Lcom/airbnb/epoxy/q;->i:I

    .line 31
    .line 32
    iget-object v3, v0, Lcom/airbnb/epoxy/q;->f:Lcom/airbnb/epoxy/h0;

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    iput-boolean v4, v3, Lcom/airbnb/epoxy/h0;->a:Z

    .line 36
    .line 37
    new-instance v5, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    .line 38
    .line 39
    invoke-direct {v5, v0}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    iget-object v7, v1, Lcom/airbnb/epoxy/m;->c:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 44
    .line 45
    if-eqz v7, :cond_0

    .line 46
    .line 47
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    iget-object v1, v1, Lcom/airbnb/epoxy/m;->a:Ljava/util/List;

    .line 56
    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-nez v7, :cond_1

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-interface {v5, v6, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_2

    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-interface {v5, v6, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_0
    iput-boolean v6, v3, Lcom/airbnb/epoxy/h0;->a:Z

    .line 93
    .line 94
    iget-object v0, v0, Lcom/airbnb/epoxy/q;->j:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    sub-int/2addr v1, v4

    .line 101
    :goto_1
    if-ltz v1, :cond_3

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lcom/airbnb/epoxy/j0;

    .line 108
    .line 109
    invoke-interface {v2}, Lcom/airbnb/epoxy/j0;->a()V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v1, v1, -0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    return-void
.end method
