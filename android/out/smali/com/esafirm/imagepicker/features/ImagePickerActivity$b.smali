.class public final Lcom/esafirm/imagepicker/features/ImagePickerActivity$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


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
        "Lx9/a<",
        "Lt1/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/esafirm/imagepicker/features/ImagePickerActivity;


# direct methods
.method public constructor <init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$b;->a:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$b;->a:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    const-class v1, Lt1/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lt1/d;

    return-object v0
.end method
