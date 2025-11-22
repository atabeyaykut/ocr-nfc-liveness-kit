.class public final Lw0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw0/b;

.field public final b:Ly0/b;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc5/v;

    invoke-direct {v0}, Lc5/v;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lw0/b;Ly0/b;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw0/c;->a:Lw0/b;

    iput-object p3, p0, Lw0/c;->b:Ly0/b;

    iput-object p4, p0, Lw0/c;->c:Landroid/content/ContentResolver;

    iput-object p1, p0, Lw0/c;->d:Ljava/util/List;

    return-void
.end method
