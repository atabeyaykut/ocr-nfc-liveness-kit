.class public abstract Lga/t0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lga/t0$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lga/t0$c$a;

    invoke-direct {v0}, Lga/t0$c$a;-><init>()V

    sput-object v0, Lga/t0$c;->a:Lga/t0$c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
