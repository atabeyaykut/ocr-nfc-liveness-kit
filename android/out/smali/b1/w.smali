.class public final Lb1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb1/w$a;,
        Lb1/w$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb1/o<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lb1/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/w<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb1/w;

    invoke-direct {v0}, Lb1/w;-><init>()V

    sput-object v0, Lb1/w;->a:Lb1/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;IILv0/h;)Lb1/o$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lv0/h;",
            ")",
            "Lb1/o$a<",
            "TModel;>;"
        }
    .end annotation

    new-instance p2, Lb1/o$a;

    new-instance p3, Lp1/b;

    invoke-direct {p3, p1}, Lp1/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lb1/w$b;

    invoke-direct {p4, p1}, Lb1/w$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lb1/o$a;-><init>(Lv0/f;Lcom/bumptech/glide/load/data/d;)V

    return-object p2
.end method
