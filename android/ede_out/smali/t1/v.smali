.class public final Lt1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lt1/v;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lt1/v;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt1/v$a;

    invoke-direct {v0}, Lt1/v$a;-><init>()V

    sput-object v0, Lt1/v;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lt1/v;

    const-string v1, "Camera"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lt1/v;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lt1/v;->c:Lt1/v;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt1/v;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lt1/v;->b:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lt1/v;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lt1/v;->b:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
