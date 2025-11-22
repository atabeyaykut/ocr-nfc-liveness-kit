.class public final Lb1/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb1/p<",
        "[B",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb1/s;)Lb1/o;
    .locals 1
    .param p1    # Lb1/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/s;",
            ")",
            "Lb1/o<",
            "[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lb1/b;

    new-instance v0, Lb1/b$d$a;

    invoke-direct {v0}, Lb1/b$d$a;-><init>()V

    invoke-direct {p1, v0}, Lb1/b;-><init>(Lb1/b$b;)V

    return-object p1
.end method
