.class public final Lj1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj1/e<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field public static final a:Lj1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj1/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj1/g;

    invoke-direct {v0}, Lj1/g;-><init>()V

    sput-object v0, Lj1/g;->a:Lj1/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lx0/w;Lv0/h;)Lx0/w;
    .locals 0
    .param p1    # Lx0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx0/w<",
            "TZ;>;",
            "Lv0/h;",
            ")",
            "Lx0/w<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
