.class public final Lb1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb1/f$b;,
        Lb1/f$e;,
        Lb1/f$a;,
        Lb1/f$c;,
        Lb1/f$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb1/o<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final a:Lb1/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/f$d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb1/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/f$d<",
            "TData;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/f;->a:Lb1/f$d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/File;

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;IILv0/h;)Lb1/o$a;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/io/File;

    .line 2
    .line 3
    new-instance p2, Lb1/o$a;

    .line 4
    .line 5
    new-instance p3, Lp1/b;

    .line 6
    .line 7
    invoke-direct {p3, p1}, Lp1/b;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance p4, Lb1/f$c;

    .line 11
    .line 12
    iget-object v0, p0, Lb1/f;->a:Lb1/f$d;

    .line 13
    .line 14
    invoke-direct {p4, p1, v0}, Lb1/f$c;-><init>(Ljava/io/File;Lb1/f$d;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p3, p4}, Lb1/o$a;-><init>(Lv0/f;Lcom/bumptech/glide/load/data/d;)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method
