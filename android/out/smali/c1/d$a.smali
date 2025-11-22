.class public abstract Lc1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb1/p<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/d$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lc1/d$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lb1/s;)Lb1/o;
    .locals 4
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
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation

    new-instance v0, Lc1/d;

    const-class v1, Ljava/io/File;

    iget-object v2, p0, Lc1/d$a;->b:Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Lb1/s;->c(Ljava/lang/Class;Ljava/lang/Class;)Lb1/o;

    move-result-object v1

    const-class v3, Landroid/net/Uri;

    invoke-virtual {p1, v3, v2}, Lb1/s;->c(Ljava/lang/Class;Ljava/lang/Class;)Lb1/o;

    move-result-object p1

    iget-object v3, p0, Lc1/d$a;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v1, p1, v2}, Lc1/d;-><init>(Landroid/content/Context;Lb1/o;Lb1/o;Ljava/lang/Class;)V

    return-object v0
.end method
