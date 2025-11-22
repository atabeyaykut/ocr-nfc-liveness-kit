.class public final Lb1/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb1/p<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb1/e$c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb1/e$c$a;

    invoke-direct {v0}, Lb1/e$c$a;-><init>()V

    iput-object v0, p0, Lb1/e$c;->a:Lb1/e$c$a;

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
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lb1/e;

    iget-object v0, p0, Lb1/e$c;->a:Lb1/e$c$a;

    invoke-direct {p1, v0}, Lb1/e;-><init>(Lb1/e$c$a;)V

    return-object p1
.end method
