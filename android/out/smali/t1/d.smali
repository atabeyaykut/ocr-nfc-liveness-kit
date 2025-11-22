.class public final Lt1/d;
.super Lc6/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lt1/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lt1/v;

.field public final r:I

.field public final s:Z

.field public final t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt1/d$a;

    invoke-direct {v0}, Lt1/d$a;-><init>()V

    sput-object v0, Lt1/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x3e7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1
    sget-object v14, Lm9/v;->a:Lm9/v;

    move-object v13, v14

    .line 2
    sget-object v15, Lt1/v;->c:Lt1/v;

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 3
    invoke-direct/range {v0 .. v18}, Lt1/d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZZLjava/util/List;Ljava/util/List;Lt1/v;IZZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZZZZLjava/util/List;Ljava/util/List;Lt1/v;IZZ)V
    .locals 7
    .param p7    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZZZZZ",
            "Ljava/util/List<",
            "Ld2/b;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Lt1/v;",
            "Ljava/lang/Object;",
            "ZZ)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    move-object/from16 v4, p15

    move/from16 v5, p16

    const-string v6, "mode"

    invoke-static {p1, v6}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    const-string v6, "selectedImages"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "excludedImages"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "savePath"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "returnMode"

    invoke-static {v5, v6}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    invoke-direct {p0}, Lc6/a;-><init>()V

    iput v1, v0, Lt1/d;->a:I

    move-object v1, p2

    iput-object v1, v0, Lt1/d;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lt1/d;->c:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lt1/d;->d:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lt1/d;->e:I

    move v1, p6

    iput v1, v0, Lt1/d;->f:I

    move v1, p7

    iput v1, v0, Lt1/d;->g:I

    move v1, p8

    iput-boolean v1, v0, Lt1/d;->h:Z

    move/from16 v1, p9

    iput-boolean v1, v0, Lt1/d;->j:Z

    move/from16 v1, p10

    iput-boolean v1, v0, Lt1/d;->k:Z

    move/from16 v1, p11

    iput-boolean v1, v0, Lt1/d;->l:Z

    move/from16 v1, p12

    iput-boolean v1, v0, Lt1/d;->m:Z

    iput-object v2, v0, Lt1/d;->n:Ljava/util/List;

    iput-object v3, v0, Lt1/d;->p:Ljava/util/List;

    iput-object v4, v0, Lt1/d;->q:Lt1/v;

    iput v5, v0, Lt1/d;->r:I

    move/from16 v1, p17

    iput-boolean v1, v0, Lt1/d;->s:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lt1/d;->t:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lt1/d;->r:I

    return v0
.end method

.method public final n()Lt1/v;
    .locals 1

    iget-object v0, p0, Lt1/d;->q:Lt1/v;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lt1/d;->s:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lt1/d;->a:I

    invoke-static {v0}, Landroidx/camera/core/impl/utils/f;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lt1/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lt1/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lt1/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lt1/d;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lt1/d;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lt1/d;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lt1/d;->h:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lt1/d;->j:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lt1/d;->k:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lt1/d;->l:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lt1/d;->m:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lt1/d;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/b;

    invoke-virtual {v1, p1, p2}, Ld2/b;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt1/d;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lt1/d;->q:Lt1/v;

    invoke-virtual {v0, p1, p2}, Lt1/v;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lt1/d;->r:I

    invoke-static {p2}, Landroidx/browser/browseractions/b;->m(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lt1/d;->s:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lt1/d;->t:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
