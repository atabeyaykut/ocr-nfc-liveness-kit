.class public final synthetic Lbe/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbe/c;->a:Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->g:[Lda/m;

    .line 2
    .line 3
    const-string p1, "this$0"

    .line 4
    .line 5
    iget-object p3, p0, Lbe/c;->a:Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;

    .line 6
    .line 7
    invoke-static {p3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x6

    .line 11
    if-ne p2, p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p3}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->G()V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method
