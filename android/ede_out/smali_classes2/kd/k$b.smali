.class public final Lkd/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:[B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final synthetic e:Lkd/k;


# direct methods
.method public constructor <init>(Lkd/k;Landroid/bluetooth/BluetoothDevice;I[BJ)V
    .locals 0
    .param p1    # Lkd/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lkd/k$b;->e:Lkd/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkd/k$b;->b:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lkd/k$b;->a:I

    iput-object p4, p0, Lkd/k$b;->c:[B

    iput-wide p5, p0, Lkd/k$b;->d:J

    return-void
.end method
