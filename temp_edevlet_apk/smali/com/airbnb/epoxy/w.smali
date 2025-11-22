.class public final Lcom/airbnb/epoxy/w;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/airbnb/epoxy/EpoxyRecyclerView;


# direct methods
.method public constructor <init>(Lcom/airbnb/epoxy/EpoxyRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/epoxy/w;->a:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/epoxy/w;->a:Lcom/airbnb/epoxy/EpoxyRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/airbnb/epoxy/o0;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/airbnb/epoxy/o0;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
