.class public final Ls1/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/esafirm/imagepicker/databinding/EfImagepickerItemFolderBinding;)V
    .locals 2

    iget-object v0, p1, Lcom/esafirm/imagepicker/databinding/EfImagepickerItemFolderBinding;->a:Lcom/esafirm/imagepicker/view/SquareFrameLayout;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object v0, p1, Lcom/esafirm/imagepicker/databinding/EfImagepickerItemFolderBinding;->b:Landroid/widget/ImageView;

    const-string v1, "binding.image"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ls1/c$a;->a:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/esafirm/imagepicker/databinding/EfImagepickerItemFolderBinding;->c:Landroid/widget/TextView;

    const-string v1, "binding.tvName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ls1/c$a;->b:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/esafirm/imagepicker/databinding/EfImagepickerItemFolderBinding;->d:Landroid/widget/TextView;

    const-string v0, "binding.tvNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/c$a;->c:Landroid/widget/TextView;

    return-void
.end method
