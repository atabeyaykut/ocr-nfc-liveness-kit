.class public final Ls1/g$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/view/View;

.field public final c:Landroid/widget/TextView;

.field public final d:Lcom/esafirm/imagepicker/view/SquareFrameLayout;


# direct methods
.method public constructor <init>(Lcom/esafirm/imagepicker/databinding/EfImagepickerItemImageBinding;)V
    .locals 3

    iget-object v0, p1, Lcom/esafirm/imagepicker/databinding/EfImagepickerItemImageBinding;->a:Lcom/esafirm/imagepicker/view/SquareFrameLayout;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object v1, p1, Lcom/esafirm/imagepicker/databinding/EfImagepickerItemImageBinding;->c:Landroid/widget/ImageView;

    const-string v2, "binding.imageView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Ls1/g$a;->a:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/esafirm/imagepicker/databinding/EfImagepickerItemImageBinding;->d:Landroid/view/View;

    const-string v2, "binding.viewAlpha"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Ls1/g$a;->b:Landroid/view/View;

    iget-object p1, p1, Lcom/esafirm/imagepicker/databinding/EfImagepickerItemImageBinding;->b:Landroid/widget/TextView;

    const-string v1, "binding.efItemFileTypeIndicator"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/g$a;->c:Landroid/widget/TextView;

    const-string p1, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ls1/g$a;->d:Lcom/esafirm/imagepicker/view/SquareFrameLayout;

    return-void
.end method
