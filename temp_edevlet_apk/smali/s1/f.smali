.class public final synthetic Ls1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls1/g;

.field public final synthetic b:Ld2/b;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ls1/g;Ld2/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/f;->a:Ls1/g;

    iput-object p2, p0, Ls1/f;->b:Ld2/b;

    iput p3, p0, Ls1/f;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ls1/f;->a:Ls1/g;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ls1/f;->b:Ld2/b;

    const-string v2, "$image"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Ls1/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v1, p0, Ls1/f;->c:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
