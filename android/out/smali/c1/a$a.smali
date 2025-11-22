.class public final Lc1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb1/p<",
        "Lb1/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb1/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/n<",
            "Lb1/g;",
            "Lb1/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb1/n;

    invoke-direct {v0}, Lb1/n;-><init>()V

    iput-object v0, p0, Lc1/a$a;->a:Lb1/n;

    return-void
.end method


# virtual methods
.method public final a(Lb1/s;)Lb1/o;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/s;",
            ")",
            "Lb1/o<",
            "Lb1/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lc1/a;

    iget-object v0, p0, Lc1/a$a;->a:Lb1/n;

    invoke-direct {p1, v0}, Lc1/a;-><init>(Lb1/n;)V

    return-object p1
.end method
