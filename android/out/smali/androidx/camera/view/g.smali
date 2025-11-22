.class public final synthetic Landroidx/camera/view/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/view/g;->a:I

    iput-object p2, p0, Landroidx/camera/view/g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 13

    move-object v0, p0

    iget v1, v0, Landroidx/camera/view/g;->a:I

    iget-object v2, v0, Landroidx/camera/view/g;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v3, v2

    check-cast v3, Landroidx/camera/view/PreviewView;

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v3 .. v12}, Landroidx/camera/view/PreviewView;->a(Landroidx/camera/view/PreviewView;Landroid/view/View;IIIIIIII)V

    return-void

    :goto_0
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;

    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->k:[Lda/m;

    const-string v1, "this$0"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;

    move-result-object v1

    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;->c:Landroid/widget/HorizontalScrollView;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
