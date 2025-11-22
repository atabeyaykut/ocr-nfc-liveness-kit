.class public final Lb1/f$b;
.super Lb1/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb1/f$a<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb1/f$b$a;

    invoke-direct {v0}, Lb1/f$b$a;-><init>()V

    invoke-direct {p0, v0}, Lb1/f$a;-><init>(Lb1/f$d;)V

    return-void
.end method
