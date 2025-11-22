.class public abstract Lmb/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmb/a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lmb/a$a;",
        ">",
        "Ljava/lang/Object;",
        "Lmb/p$a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic E(Lmb/d;Lmb/f;)Lmb/p$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lmb/a$a;->h(Lmb/d;Lmb/f;)Lmb/a$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract h(Lmb/d;Lmb/f;)Lmb/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb/d;",
            "Lmb/f;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
