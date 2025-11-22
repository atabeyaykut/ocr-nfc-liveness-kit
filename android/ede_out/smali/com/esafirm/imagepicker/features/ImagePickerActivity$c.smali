.class public final Lcom/esafirm/imagepicker/features/ImagePickerActivity$c;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/esafirm/imagepicker/features/ImagePickerActivity;


# direct methods
.method public constructor <init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$c;->a:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    sget v0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->h:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$c;->a:Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->e:Ll9/j;

    .line 6
    .line 7
    invoke-virtual {v0}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lv1/a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
