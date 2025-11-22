.class public final Lcom/esafirm/imagepicker/features/ImagePickerActivity$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esafirm/imagepicker/features/ImagePickerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/util/List<",
        "+",
        "Ld2/b;",
        ">;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/esafirm/imagepicker/features/ImagePickerActivity;


# direct methods
.method public constructor <init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$d;->a:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    check-cast p1, Ljava/util/Collection;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lm9/v;->a:Lm9/v;

    .line 16
    .line 17
    :goto_0
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "selectedImages"

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$d;->a:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->k(Landroid/content/Intent;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 31
    .line 32
    return-object p1
.end method
