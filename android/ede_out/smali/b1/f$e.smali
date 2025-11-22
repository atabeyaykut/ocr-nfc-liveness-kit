.class public final Lb1/f$e;
.super Lb1/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb1/f$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb1/f$e$a;

    invoke-direct {v0}, Lb1/f$e$a;-><init>()V

    invoke-direct {p0, v0}, Lb1/f$a;-><init>(Lb1/f$d;)V

    return-void
.end method
