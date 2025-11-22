.class public final Lgd/b;
.super Lgd/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lgd/g;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x118

    aput v2, v0, v1

    iput-object v0, p0, Lgd/g;->z:[I

    const-string v0, "m:2-3=beac,i:4-19,i:20-21,i:22-23,p:24-24,d:25-25"

    invoke-virtual {p0, v0}, Lgd/g;->h(Ljava/lang/String;)V

    const-string v0, "altbeacon"

    iput-object v0, p0, Lgd/g;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final e(IJLandroid/bluetooth/BluetoothDevice;[B)Lgd/c;
    .locals 7

    new-instance v6, Lgd/a;

    invoke-direct {v6}, Lgd/a;-><init>()V

    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move-object v3, p4

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lgd/g;->f([BILandroid/bluetooth/BluetoothDevice;JLgd/c;)Lgd/c;

    move-result-object p1

    return-object p1
.end method
