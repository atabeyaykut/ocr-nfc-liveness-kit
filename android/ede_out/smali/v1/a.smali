.class public final Lv1/a;
.super Lc6/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv1/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lt1/v;

.field public final b:I

.field public final c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv1/a$a;

    invoke-direct {v0}, Lv1/a$a;-><init>()V

    sput-object v0, Lv1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lt1/v;->c:Lt1/v;

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v0, v1, v2}, Lv1/a;-><init>(Lt1/v;IZ)V

    return-void
.end method

.method public constructor <init>(Lt1/v;IZ)V
    .locals 1

    const-string v0, "savePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returnMode"

    invoke-static {p2, v0}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    invoke-direct {p0}, Lc6/a;-><init>()V

    iput-object p1, p0, Lv1/a;->a:Lt1/v;

    iput p2, p0, Lv1/a;->b:I

    iput-boolean p3, p0, Lv1/a;->c:Z

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

    iget v0, p0, Lv1/a;->b:I

    return v0
.end method

.method public final n()Lt1/v;
    .locals 1

    iget-object v0, p0, Lv1/a;->a:Lt1/v;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lv1/a;->c:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv1/a;->a:Lt1/v;

    invoke-virtual {v0, p1, p2}, Lt1/v;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lv1/a;->b:I

    invoke-static {p2}, Landroidx/browser/browseractions/b;->m(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lv1/a;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
