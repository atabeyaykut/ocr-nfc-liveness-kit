.class public final Ls1/h;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Landroidx/recyclerview/widget/AsyncListDiffer<",
        "Ld2/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/g;


# direct methods
.method public constructor <init>(Ls1/g;)V
    .locals 0

    iput-object p1, p0, Ls1/h;->a:Ls1/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance v1, Lb2/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lb2/b;-><init>(I)V

    iget-object v2, p0, Ls1/h;->a:Ls1/g;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-object v0
.end method
